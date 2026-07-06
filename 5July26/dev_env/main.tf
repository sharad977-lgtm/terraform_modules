module "rg" {
    source = "../modules/rg"
    rgs = var.rgsp
}

module "vnet" {
    depends_on = [module.rg]
    source = "../modules/vnet"
    vnets = var.vnetsp
}

module "subnet" {
    depends_on = [module.vnet]
    source = "../modules/subnet"
    subnets = var.subnetsp
    }