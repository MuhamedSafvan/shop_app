import 'dart:convert';

import 'package:http/http.dart';

List testList = [
  {
    "type": "productlist",
    "data": {
      "id": "6",
      "title": "Mobile Phones",
      "items": [
        {
          "name": "MOTOROLA G10 Power (Aurora Grey, 64 GB)  (4 GB RAM)",
          "id": "6",
          "sku": "MOTOROLA G10 Power",
          "image": "\/m\/o\/motog9.jpeg",
          "price": 10,
          "storage": "128 GB",
          "product_tag": null,
          "preorder": "1"
        },
        {
          "name": "APPLE iPhone 12 Pro (Pacific Blue, 128 GB)",
          "id": "5",
          "sku": "OMPH001",
          "image":
              "\/a\/p\/apple-iphone-12-pro-dummyapplefsn-original-imafwgbrzxg3nggd.jpeg",
          "price": 100.11,
          "special_price": 90,
          "rating": "3.4",
          "storage": "128 GB",
          "product_tag": "VAT Included",
          "preorder": "1"
        },
        {
          "name": "OPPO RENO 10x Zoom",
          "id": "300",
          "sku": "OPPORENO10XZOOM",
          "image": "\/o\/p\/oppo_reno_10x_zoom.jpg",
          "price": 265,
          "storage": "256 GB",
          "product_tag": null,
          "preorder": null
        },
        {
          "name": "HONOR 7C 32GB",
          "id": "316",
          "sku": "HNR7C32GB",
          "image": "\/h\/o\/honor_7c_32gb.jpg",
          "price": 50,
          "storage": "32 GB",
          "product_tag": null,
          "preorder": null
        }
      ]
    },
    "subtype": "product_list"
  },
  {
    "type": "productlist",
    "data": {
      "id": "6",
      "title": "test product",
      "items": [
        {
          "name": "MOTOROLA G10 Power (Aurora Grey, 64 GB)  (4 GB RAM)",
          "id": "6",
          "sku": "MOTOROLA G10 Power",
          "image": "\/m\/o\/motog9.jpeg",
          "price": 10,
          "storage": "128 GB",
          "product_tag": null,
          "preorder": "1"
        },
        {
          "name": "APPLE iPhone 12 Pro (Pacific Blue, 128 GB)",
          "id": "5",
          "sku": "OMPH001",
          "image":
              "\/a\/p\/apple-iphone-12-pro-dummyapplefsn-original-imafwgbrzxg3nggd.jpeg",
          "price": 100.11,
          "special_price": 90,
          "rating": "3.4",
          "storage": "128 GB",
          "product_tag": "VAT Included",
          "preorder": "1"
        },
        {
          "name": "OPPO RENO 10x Zoom",
          "id": "300",
          "sku": "OPPORENO10XZOOM",
          "image": "\/o\/p\/oppo_reno_10x_zoom.jpg",
          "price": 265,
          "storage": "256 GB",
          "product_tag": null,
          "preorder": null
        },
        {
          "name": "HONOR 7C 32GB",
          "id": "316",
          "sku": "HNR7C32GB",
          "image": "\/h\/o\/honor_7c_32gb.jpg",
          "price": 50,
          "storage": "32 GB",
          "product_tag": null,
          "preorder": null
        }
      ]
    },
    "subtype": "product_list"
  },
  {
    "type": "productlist",
    "data": {
      "id": "",
      "title": "Featured Items",
      "items": [
        {
          "name": "MOTOROLA G10 Power (Aurora Grey, 64 GB)  (4 GB RAM)",
          "id": "6",
          "sku": "MOTOROLA G10 Power",
          "image": "\/m\/o\/motog9.jpeg",
          "price": 10,
          "storage": "128 GB",
          "product_tag": null,
          "preorder": "1"
        },
        {
          "name": "APPLE iPhone 12 Pro (Pacific Blue, 128 GB)",
          "id": "5",
          "sku": "OMPH001",
          "image":
              "\/a\/p\/apple-iphone-12-pro-dummyapplefsn-original-imafwgbrzxg3nggd.jpeg",
          "price": 100.11,
          "special_price": 90,
          "rating": "3.4",
          "storage": "128 GB",
          "product_tag": "VAT Included",
          "preorder": "1"
        },
        {
          "name": "Apple Leather Case for iPhone 11 Pro",
          "id": "163",
          "sku": "iphone11pro leather case",
          "image": "\/a\/p\/apple_leather_case_for_iphone_11_pro.jpg",
          "price": 27.9,
          "storage": false,
          "product_tag": null,
          "preorder": "0"
        },
        {
          "name": "Infinix Zero 8i (Black Diamond, 128 GB)  (8 GB RAM)",
          "id": "7",
          "sku": "Infinix Zero 8i",
          "image":
              "\/i\/n\/infinix-zero-8i-x687b-original-imafxvbaprng39yw.jpeg",
          "price": 16,
          "storage": false,
          "product_tag": null,
          "preorder": null
        }
      ]
    },
    "subtype": "featured_product"
  },
  {
    "type": "banner",
    "data": {
      "id": "5",
      "type": "product",
      "file":
          "https:\/\/omanphone.smsoman.com\/mobile-admin\/uploads\/image_60bdaba71f45f.jpeg"
    }
  },
  {
    "type": "productlist",
    "data": {
      "id": "",
      "title": "New Arrivals",
      "items": [
        {
          "name": "MOTOROLA G10 Power (Aurora Grey, 64 GB)  (4 GB RAM)",
          "id": "6",
          "sku": "MOTOROLA G10 Power",
          "image": "\/m\/o\/motog9.jpeg",
          "price": 10,
          "storage": "128 GB",
          "product_tag": null,
          "preorder": "1"
        },
        {
          "name": "APPLE iPhone 12 Pro (Pacific Blue, 128 GB)",
          "id": "5",
          "sku": "OMPH001",
          "image":
              "\/a\/p\/apple-iphone-12-pro-dummyapplefsn-original-imafwgbrzxg3nggd.jpeg",
          "price": 100.11,
          "special_price": 90,
          "rating": "3.4",
          "storage": "128 GB",
          "product_tag": "VAT Included",
          "preorder": "1"
        },
        {
          "name": "MI Earbuds True Wireless",
          "id": "366",
          "sku": "MIEARBUDSTW",
          "image": "\/m\/i\/mi_earbuds_true_wireless.jpg",
          "price": 15.9,
          "storage": false,
          "product_tag": null,
          "preorder": null
        },
        {
          "name": "MI Smart Band 5",
          "id": "367",
          "sku": "MISMRTBND5",
          "image": "\/m\/i\/mi_smart_band_5.jpg",
          "price": 15.9,
          "storage": "512 Kb",
          "product_tag": null,
          "preorder": null
        }
      ]
    },
    "subtype": "latest_product"
  },
  {
    "type": "productlist",
    "data": {
      "id": "",
      "title": "Offers",
      "items": [
        {
          "name": "APPLE iPhone 12 Pro (Pacific Blue, 128 GB)",
          "id": "5",
          "sku": "OMPH001",
          "image":
              "\/a\/p\/apple-iphone-12-pro-dummyapplefsn-original-imafwgbrzxg3nggd.jpeg",
          "price": 100.11,
          "special_price": 90,
          "rating": "3.4",
          "storage": "128 GB",
          "product_tag": "VAT Included",
          "preorder": "1"
        }
      ]
    },
    "subtype": "sales_product"
  }
];
