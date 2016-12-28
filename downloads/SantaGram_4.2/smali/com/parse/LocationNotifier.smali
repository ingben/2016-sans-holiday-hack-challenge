.class Lcom/parse/LocationNotifier;
.super Ljava/lang/Object;


# static fields
.field private static fakeLocation:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentLocationAsync(Landroid/content/Context;JLandroid/location/Criteria;)La/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/location/Criteria;",
            ")",
            "La/j",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    new-instance v6, La/k;

    invoke-direct {v6}, La/k;-><init>()V

    new-instance v1, La/g;

    invoke-direct {v1}, La/g;-><init>()V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v5, Lcom/parse/LocationNotifier$1;

    invoke-direct {v5, v1, v6, v0}, Lcom/parse/LocationNotifier$1;-><init>(La/g;La/k;Landroid/location/LocationManager;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/parse/LocationNotifier$2;

    invoke-direct {v3, v6, v0, v5}, Lcom/parse/LocationNotifier$2;-><init>(La/k;Landroid/location/LocationManager;Landroid/location/LocationListener;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, p1, p2, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v1, v2}, La/g;->a(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    sget-object v0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    invoke-interface {v5, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_1
    invoke-virtual {v6}, La/k;->a()La/j;

    move-result-object v0

    return-object v0
.end method

.method static setFakeLocation(Landroid/location/Location;)V
    .locals 0

    sput-object p0, Lcom/parse/LocationNotifier;->fakeLocation:Landroid/location/Location;

    return-void
.end method
