# Factory Pattern

일반적으로 사용되는 constructor
`Rectangle rect = Rectangle()`
굉장히 많이 쓰지만 이 패턴은 큰 단점이 있다.
인스턴스화를 위해 정확한 class type을 알아야 한다는 것이다.

왜냐면 새로운 타입들이 사용될수 있기 때문이다.

```
FastBullet fb = FastBullet();
SlowBullet sb = SlowBullet();
```

코드 자체에 타입과 연관성이 너무 강하게 있어서 새로운 타입이 생길때마다 코드를 변경해줘야한다는 단점이다.

Factory Method는 Creational Design Pattern으로 생성 타입에 대한 로직을 추상화 시켜준다.

1. 오브젝트는 constructor 대신 factory method로 만들어진다..
2. 오브젝트는 concretion대신 abstraction으로 만들어진다.

생성 로직을 호출자에게 노출하지 않는다. 호출자는 인터페이스를 통해서 새로운 오브젝트에 접근한다.

총알을 abstract class로 하고 나머지들은 상속하게 하자.

```
Bullet myBullet001 = BulletFactory.create(Bullet.FAST_BULLET);
Bullet myBullet002 = BulletFactory.create(Bullet.SLOW_BULLET);
```

호출자는 factory의 로직에 대해서 알지 못한다. 오로지 `.create`로 불러야된다는것과 `Bullet.TYPE`을 넣어줘야한다는것만 안다.
context data를 써서 더 제너릭하게 만들수도 있다.

```
BulletBuildContext context = //initialization data
Bullet myBullet003 = BulletFactory.create(context)
```

추가로 오브젝트를 캐시할 수 있다.
호출자는 캐시여부를 전혀 알 수 없다.

Define an interface for creating an object, but let subclasses decide which class to instantiate.
