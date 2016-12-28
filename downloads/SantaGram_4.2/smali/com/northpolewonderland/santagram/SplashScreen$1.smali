.class Lcom/northpolewonderland/santagram/SplashScreen$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


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

    iput-object p1, p0, Lcom/northpolewonderland/santagram/SplashScreen$1;->a:Lcom/northpolewonderland/santagram/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/SplashScreen$1;->a:Lcom/northpolewonderland/santagram/SplashScreen;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/SplashScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
