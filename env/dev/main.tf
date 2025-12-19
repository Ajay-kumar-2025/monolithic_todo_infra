module "rg-mb" {
  source = "../../module/resource-group"
  child-rg-infra = var.rgs-pm
  }
 
 module "stg-mb" {
  depends_on = [ module.rg-mb ]
   source = "../../module/storage-account"
  child-stg = var.stg-pm
 }

module "vnet-mb" {
  depends_on = [ module.rg-mb ]
  source = "../../module/virtual-network"
  child-vnet = var.vnet-pm

}

module "subnet-pm" {
  depends_on = [ module.vnet-mb ]
  source = "../../module/subnet"
  subnets = var.subnet-pv
  
}


module "vm-pm" {
  depends_on = [ module.subnet-pm ]
  source = "../../module/virtaul-machine"
  child-vm = var.vm-pv

}



  