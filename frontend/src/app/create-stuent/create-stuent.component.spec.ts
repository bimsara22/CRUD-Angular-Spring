import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateStuentComponent } from './create-stuent.component';

describe('CreateStuentComponent', () => {
  let component: CreateStuentComponent;
  let fixture: ComponentFixture<CreateStuentComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CreateStuentComponent]
    });
    fixture = TestBed.createComponent(CreateStuentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
