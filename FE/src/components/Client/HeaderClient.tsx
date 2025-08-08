/* eslint-disable @typescript-eslint/no-explicit-any */
import {
  EllipsisOutlined,
  SearchOutlined,
  ShoppingCartOutlined,
  UserOutlined,
} from "@ant-design/icons";
import { useAuthen } from "../../hooks/useAuthen";
import ModalLogin from "../Modal/ModalLogin";
import { useModal } from "../../hooks/useModal";
import { Link, useNavigate } from "react-router";
import { useSearchPanel } from "../../hooks/useSearchPanel";
import { Badge, Dropdown, MenuProps } from "antd";
import { useCart } from "../../hooks/useCart";

import { BsDoorOpen } from "react-icons/bs";
import logo_F from "../../assets/images/logo_F.png";
// import logo_black from "../../assets/images/logo_black.png";

const HeaderClient = () => {
  /* Start dont-delete */

  const { openModal } = useModal();
  const { accessToken, user, logout } = useAuthen();
  const { cart } = useCart();
  const {
    categories,
    selectedCategory,
    setSelectedCategory,
    setIsOpenSearchPanel,
  } = useSearchPanel();
  const navigate = useNavigate();

  // console.log(user);

  const handleClickToCartPage = () => {
    if (!accessToken) {
      openModal(<ModalLogin />);
      return;
    }
    // Nếu đã ở trang /carts thì không push thêm vào history
    if (location.pathname === "/carts") return;

    navigate("/carts");
  };

  // console.log(cart);

  const getGreeting = () => {
    const hour = new Date().getHours();

    if (hour >= 5 && hour < 12) {
      return {
        message: "Good morning",
        icon: "☀️",
      };
    } else if (hour >= 12 && hour < 18) {
      return {
        message: "Good afternoon",
        icon: "🌤️",
      };
    } else {
      return {
        message: "Good evening",
        icon: "🌙",
      };
    }
  };

  const { message, icon } = getGreeting();

  const handleMenuClick: MenuProps["onClick"] = ({ key }) => {
    if (key === "2") {
      navigate("/account/address");
    }

    if (key === "3") {
      navigate("/account/order");
    }

    if (key === "4") {
      navigate("/admin");
    }

    if (key === "5") {
      logout();
    }
  };

  const handleMenuExtraClick: MenuProps["onClick"] = ({ key }) => {
    if (key === "1") {
      navigate("/post");
    }

    if (key === "2") {
      if (!accessToken) {
        openModal(<ModalLogin />);
      } else {
        navigate("/account/order");
      }
    }

    if (key === "3") {
      navigate("/contact");
      // logout();
    }
  };

  const itemsExtra: MenuProps["items"] = [
    {
      key: "1",
      label: (
        <div className="text-base flex items-center gap-4 py-1">
          <img
            width={35}
            src="https://cdn-icons-png.flaticon.com/512/3596/3596091.png"
            alt=""
          />
          <div className="">Tin thời trang</div>
        </div>
      ),
    },
    {
      key: "2",
      label: (
        <div className="text-base flex items-center gap-4 py-1">
          <img
            width={35}
            src="https://cdn-icons-png.flaticon.com/512/846/846364.png"
            alt=""
          />
          <div className="">Tra cứu đơn hàng</div>
        </div>
      ),
    },
    {
      key: "3",
      label: (
        <div className="text-base flex items-center gap-4 py-1">
          <img
            width={35}
            src="https://cdn-icons-png.flaticon.com/512/3894/3894024.png"
            alt=""
          />
          <div className="">Liên hệ</div>
        </div>
      ),
    },
  ];

  const items: MenuProps["items"] = [
    {
      key: "1",
      label: (
        <p className="text-base font-bold py-1">
          {message} {icon} {user?.name} !
        </p>
      ),
    },
    {
      key: "2",
      label: (
        <div className="text-base flex items-center gap-4 py-1">
          <img
            width={35}
            src="https://cdn-icons-png.flaticon.com/512/3596/3596091.png"
            alt=""
          />
          <div className="flex flex-col">
            <p className="font-bold">Thông tin người dùng</p>
            <span className="text-xs">
              Tài khoản, Đơn hàng, Địa chỉ giao nhận
            </span>
          </div>
        </div>
      ),
    },
    {
      key: "3",
      label: (
        <div className="text-base flex items-center gap-4 py-1">
          <img
            width={35}
            src="https://cdn-icons-png.flaticon.com/512/846/846364.png"
            alt=""
          />
          <div className="flex flex-col">
            <p className="font-bold">Lịch sử đơn hàng</p>
            <span className="text-xs">Tra cứu đơn hàng đã đặt</span>
          </div>
        </div>
      ),
    },
    ...(user?.role === "Admin"
      ? [
          {
            key: "4",
            label: (
              <div className="text-base flex items-center gap-4 py-1">
                <BsDoorOpen className="text-4xl" />
                <div className="flex flex-col">
                  <p className="font-bold">Truy cập trang quản trị</p>
                  <span className="text-xs">Trang quản trị</span>
                </div>
              </div>
            ),
          },
        ]
      : []),
    {
      key: "5",
      label: <div className="text-base font-bold py-1">Đăng xuất</div>,
    },
  ];

  return (
    <header className=" shrink-0 sticky top-0 z-50 bg-white  border-gray-200  px-4 mb-5">
      <div className="text-black w-7xl m-auto flex justify-between items-center py-5 px-4">
        <div className="flex gap-6 items-center">
          <SearchOutlined
            className="text-xl cursor-pointer"
            onClick={() => setIsOpenSearchPanel(true)}
          />
          <div className="list-none flex gap-3.5">
            {categories.map((category: any) => (
              <li
                key={category.id}
                className={`cursor-pointer   ${
                  selectedCategory?.id === category.id
                    ? "border-b-2 border-black font-semibold"
                    : ""
                }`}
                onClick={() => {
                  setSelectedCategory(category);
                  setIsOpenSearchPanel(true);
                }}
              >
                {category.name}
              </li>
            ))}
            {/* <Link to="/address">
              <li>Địa chỉ</li>
            </Link>
            <li>Khuyến mãi</li> */}
          </div>
        </div>
        <div>
          <Link to={"/"}>
            <img
              width={30}
              // src={logo_black}
              src={logo_F}
              // src="https://media.routine.vn/1920x0/prod/media/a31071fa-22a1-440b-a6d2-776d07fe0419.webp"
              alt=""
            />
          </Link>
        </div>
        <div className="flex items-center gap-3">
          <div className="flex items-center gap-1">
            {!accessToken ? (
              <>
                <UserOutlined className="text-2xl" />
                <p
                  className="cursor-pointer"
                  onClick={() => openModal(<ModalLogin />)}
                >
                  Đăng nhập
                </p>
              </>
            ) : (
              <Dropdown
                // overlay={customMenu}
                menu={{ items, onClick: handleMenuClick }}
                placement="bottom"
                trigger={["click"]}
              >
                <div className="flex items-center gap-1 cursor-pointer">
                  <UserOutlined className="text-2xl" />
                  <p className="text-sm font-bold">{user?.name}</p>
                </div>
              </Dropdown>
            )}
          </div>

          {/* <Badge count={cart?.totalItem ? cart?.totalItem : 0} showZero> */}
          <Badge
            count={!cart?.totalItem || !accessToken ? 0 : cart?.totalItem}
            showZero
          >
            <ShoppingCartOutlined
              onClick={handleClickToCartPage}
              className="text-3xl cursor-pointer"
            />
          </Badge>

          <Dropdown
            menu={{ items: itemsExtra, onClick: handleMenuExtraClick }}
            trigger={["click"]}
            placement="topCenter"
          >
            <EllipsisOutlined className="text-3xl cursor-pointer" />
          </Dropdown>
        </div>
      </div>
    </header>
  );
};
export default HeaderClient;
