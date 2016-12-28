.class public Lcom/northpolewonderland/santagram/AddPost;
.super Landroid/support/v7/a/e;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field currentLocation:Landroid/location/Location;

.field curruser:Lcom/parse/ParseUser;

.field locationManager:Landroid/location/LocationManager;

.field marshMallowPermission:Lcom/northpolewonderland/santagram/a;

.field pd:Landroid/app/ProgressDialog;

.field postImage:Landroid/widget/ImageView;

.field postTxt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/a/e;-><init>()V

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    iput-object v0, p0, Lcom/northpolewonderland/santagram/AddPost;->curruser:Lcom/parse/ParseUser;

    new-instance v0, Lcom/northpolewonderland/santagram/a;

    invoke-direct {v0, p0}, Lcom/northpolewonderland/santagram/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/northpolewonderland/santagram/AddPost;->marshMallowPermission:Lcom/northpolewonderland/santagram/a;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/a/e;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/northpolewonderland/santagram/AddPost;->setContentView(I)V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/AddPost;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
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
