module "rg" {
    source = "../modules/rg"
    rgs = var.rgs
}

module "vnet" {
    depends_on = [module.rg]
    source = "../modules/vnet"
    vnets = var.vnets
}

module "subnet" {
    depends_on = [module.vnet]
    source = "../modules/subnet"
    subnets = var.subnets
}