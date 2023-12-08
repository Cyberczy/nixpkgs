{ lib
, rustPlatform
, fetchCrate
}:

rustPlatform.buildRustPackage rec {
  pname = "svdtools";
  version = "0.3.6";

  src = fetchCrate {
    inherit version pname;
    hash = "sha256-bk6kv13HMDSRBjShWnRZJzb0YX0zKljPoEC6tebkVKI=";
  };

  cargoHash = "sha256-MdYzYmbI7ZNLeLZdnLIVo9y2rvmGevEGy7t+2FFu5yo=";

  meta = with lib; {
    description = "Tools to handle vendor-supplied, often buggy SVD files";
    homepage = "https://github.com/stm32-rs/svdtools";
    changelog = "https://github.com/stm32-rs/svdtools/blob/v${version}/CHANGELOG-rust.md";
    license = with licenses; [ asl20 /* or */ mit ];
    maintainers = with maintainers; [ newam ];
  };
}
