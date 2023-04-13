@extends('front.template._base')


@section('content')

<section class="hero">
    <div class="container">
        <div class="hero-inner">
            <div class="hero-copy">
                <h1 class="hero-title mt-0">Dataside</h1>
                <p class="hero-paragraph">Dataside es una coorporación orientada al soporte computacional de técnología de punta.</p>
                <div class="hero-cta">
                    <a class="button button-primary" href="#products-section">Ver productos</a>
                    <a class="button" href="#" href="#contact-section">Contáctanos</a>
                </div>
            </div>
            <div class="hero-figure anime-element">
                <svg class="placeholder" width="528" height="396" viewBox="0 0 528 396">
                    <rect width="528" height="396" style="fill:transparent;" />
                </svg>
                <div class="hero-figure-box hero-figure-box-01" data-rotation="45deg"></div>
                <div class="hero-figure-box hero-figure-box-02" data-rotation="-45deg"></div>
                <div class="hero-figure-box hero-figure-box-03" data-rotation="0deg"></div>
                <div class="hero-figure-box hero-figure-box-04" data-rotation="-135deg"></div>
                <div class="hero-figure-box hero-figure-box-05"></div>
                <div class="hero-figure-box hero-figure-box-06"></div>
                <div class="hero-figure-box hero-figure-box-07"></div>
                <div class="hero-figure-box hero-figure-box-08" data-rotation="-22deg"></div>
                <div class="hero-figure-box hero-figure-box-09" data-rotation="-52deg"></div>
                <div class="hero-figure-box hero-figure-box-10" data-rotation="-50deg"></div>
            </div>
        </div>
    </div>
</section>

<section class="features section" id="products-section">
    <div class="container">
        <div class="features-inner section-inner has-bottom-divider">
            <div class="features-wrap">
                @foreach ($productos as $producto)
                <div class="feature text-center is-revealing">
                    <div class="feature-inner">
                        <div class="feature-icon">
                            <img src="{{ asset('storage'). '/' . $producto->image }}" alt="{{ $producto->title }}">
                        </div>
                        <h4 class="feature-title mt-24">{{ $producto->title }}</h4>
                        <p class="text-sm mb-0">{{ $producto->descripcion }}</p>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>

{{-- <section class="pricing section">
    <div class="container-sm">
        <div class="pricing-inner section-inner">
            <div class="pricing-header text-center">
                <h2 class="section-title mt-0">Unlimited for all</h2>
                <p class="section-paragraph mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ad quis nostrud.</p>
            </div>
            <div class="pricing-tables-wrap">
                <div class="pricing-table">
                    <div class="pricing-table-inner is-revealing">
                        <div class="pricing-table-main">
                            <div class="pricing-table-header pb-24">
                                <div class="pricing-table-price"><span class="pricing-table-price-currency h2">$</span><span class="pricing-table-price-amount h1">49</span><span class="text-xs">/month</span></div>
                            </div>
                            <div class="pricing-table-features-title text-xs pt-24 pb-24">What you will get</div>
                            <ul class="pricing-table-features list-reset text-xs">
                                <li>
                                    <span>Lorem ipsum dolor sit nisi</span>
                                </li>
                                <li>
                                    <span>Lorem ipsum dolor sit nisi</span>
                                </li>
                                <li>
                                    <span>Lorem ipsum dolor sit nisi</span>
                                </li>
                                <li>
                                    <span>Lorem ipsum dolor sit nisi</span>
                                </li>
                            </ul>
                        </div>
                        <div class="pricing-table-cta mb-8">
                            <a class="button button-primary button-shadow button-block" href="#">Pre order now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> --}}

<section class="ctacontent section" id="contact-section">
    <div class="container">
        <div class="section-inner">
        {{-- <div class="cta-inner section-inner"> --}}
            <h3 class="section-title mt-0">¿Deseas comunicarte con nosotros?</h3>
            <br>
            <p>Teléfono: 955 775 880</p>
            <br>
            <p>Correo: benjiuriberamos@gmail.com</p>
            {{-- <div class="cta-cta">
                <a class="button button-primary button-wide-mobile" href="#"></a>
            </div> --}}
        </div>
    </div>
</section>

@endsection