export interface DecodedJwt {
    userId: string;
    name: string;
    email: string;
    role: string[];
    isAdmin: boolean;
    iat: number;
    exp: number;
  }

  
export interface PriorityMenu{
    priorityId: string,
    productId: string,
    productName: string,
    priority: string,
    menuType: string //["Kits", "Drivers", "Sub Drivers", "Sub Sub Drivers"],
    categoryId: string,
    categoryName: string
}

  export const MAX_SIZE = 2 * 1024 * 1024; // 2MB