import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AcceptOrderDeliveryComponent } from './accept-order-delivery.component';

describe('AcceptOrderDeliveryComponent', () => {
  let component: AcceptOrderDeliveryComponent;
  let fixture: ComponentFixture<AcceptOrderDeliveryComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AcceptOrderDeliveryComponent]
    });
    fixture = TestBed.createComponent(AcceptOrderDeliveryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
