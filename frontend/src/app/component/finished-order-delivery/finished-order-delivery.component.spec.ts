import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FinishedOrderDeliveryComponent } from './finished-order-delivery.component';

describe('FinishedOrderDeliveryComponent', () => {
  let component: FinishedOrderDeliveryComponent;
  let fixture: ComponentFixture<FinishedOrderDeliveryComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [FinishedOrderDeliveryComponent]
    });
    fixture = TestBed.createComponent(FinishedOrderDeliveryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
