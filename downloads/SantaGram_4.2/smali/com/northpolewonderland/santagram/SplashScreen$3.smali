.class Lcom/northpolewonderland/santagram/SplashScreen$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/SplashScreen;->postDeviceAnalyticsData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/northpolewonderland/santagram/SplashScreen;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/SplashScreen;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/SplashScreen$3;->b:Lcom/northpolewonderland/santagram/SplashScreen;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/SplashScreen$3;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SplashScreen$3;->b:Lcom/northpolewonderland/santagram/SplashScreen;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Lcom/northpolewonderland/santagram/SplashScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SplashScreen$3;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
