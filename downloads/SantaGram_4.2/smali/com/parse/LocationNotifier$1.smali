.class final Lcom/parse/LocationNotifier$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/LocationNotifier;->getCurrentLocationAsync(Landroid/content/Context;JLandroid/location/Criteria;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$manager:Landroid/location/LocationManager;

.field final synthetic val$tcs:La/k;

.field final synthetic val$timeoutFuture:La/g;


# direct methods
.method constructor <init>(La/g;La/k;Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/LocationNotifier$1;->val$timeoutFuture:La/g;

    iput-object p2, p0, Lcom/parse/LocationNotifier$1;->val$tcs:La/k;

    iput-object p3, p0, Lcom/parse/LocationNotifier$1;->val$manager:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/parse/LocationNotifier$1;->val$timeoutFuture:La/g;

    invoke-virtual {v0}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/parse/LocationNotifier$1;->val$tcs:La/k;

    invoke-virtual {v0, p1}, La/k;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/parse/LocationNotifier$1;->val$manager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
