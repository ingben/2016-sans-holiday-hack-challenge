.class Lcom/northpolewonderland/santagram/SplashScreen$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/northpolewonderland/santagram/SplashScreen;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/SplashScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/SplashScreen$2;->a:Lcom/northpolewonderland/santagram/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SplashScreen$2;->a:Lcom/northpolewonderland/santagram/SplashScreen;

    const-class v2, Lcom/northpolewonderland/santagram/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/northpolewonderland/santagram/SplashScreen$2;->a:Lcom/northpolewonderland/santagram/SplashScreen;

    invoke-virtual {v1, v0}, Lcom/northpolewonderland/santagram/SplashScreen;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/northpolewonderland/santagram/SplashScreen$2;->a()V

    return-void
.end method
