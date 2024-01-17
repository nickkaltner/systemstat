use systemstat::{System, Platform};

#[rustler::nif]
fn cpu_temp() -> f32 {
    let sys = System::new();

    let temp = sys.cpu_temp().ok();

    match temp {
        None =>  0.0,
        Some(temp) => temp,
    }
    
}

rustler::init!("Elixir.SystemStatEx", [cpu_temp]);
