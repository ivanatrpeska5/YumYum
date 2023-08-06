import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CurrentOrderDeliveryComponent } from './current-order-delivery.component';

describe('CurrentOrderDeliveryComponent', () => {
  let component: CurrentOrderDeliveryComponent;
  let fixture: ComponentFixture<CurrentOrderDeliveryComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CurrentOrderDeliveryComponent]
    });
    fixture = TestBed.createComponent(CurrentOrderDeliveryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
