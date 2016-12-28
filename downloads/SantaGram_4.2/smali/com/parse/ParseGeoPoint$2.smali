.class final Lcom/parse/ParseGeoPoint$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseGeoPoint;->getCurrentLocationInBackground(JLandroid/location/Criteria;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Landroid/location/Location;",
        "Lcom/parse/ParseGeoPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParseGeoPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Landroid/location/Location;",
            ">;)",
            "Lcom/parse/ParseGeoPoint;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    new-instance v1, Lcom/parse/ParseGeoPoint;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    return-object v1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint$2;->then(La/j;)Lcom/parse/ParseGeoPoint;

    move-result-object v0

    return-object v0
.end method
