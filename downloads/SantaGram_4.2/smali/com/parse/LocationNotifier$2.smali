.class final Lcom/parse/LocationNotifier$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/LocationNotifier;->getCurrentLocationAsync(Landroid/content/Context;JLandroid/location/Criteria;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/location/LocationListener;

.field final synthetic val$manager:Landroid/location/LocationManager;

.field final synthetic val$tcs:La/k;


# direct methods
.method constructor <init>(La/k;Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/LocationNotifier$2;->val$tcs:La/k;

    iput-object p2, p0, Lcom/parse/LocationNotifier$2;->val$manager:Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/parse/LocationNotifier$2;->val$listener:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/parse/LocationNotifier$2;->val$tcs:La/k;

    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x7c

    const-string v3, "Location fetch timed out."

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, La/k;->a(Ljava/lang/Exception;)Z

    iget-object v0, p0, Lcom/parse/LocationNotifier$2;->val$manager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/parse/LocationNotifier$2;->val$listener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
