Select maker from product join pc on pc.model = product.model
except
(Select maker from product join laptop on laptop.model = product.model)

