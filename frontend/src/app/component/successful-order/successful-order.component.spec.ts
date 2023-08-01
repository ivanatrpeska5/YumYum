import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SuccessfulOrderComponent } from './successful-order.component';

describe('SuccessfulOrderComponent', () => {
  let component: SuccessfulOrderComponent;
  let fixture: ComponentFixture<SuccessfulOrderComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [SuccessfulOrderComponent]
    });
    fixture = TestBed.createComponent(SuccessfulOrderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
