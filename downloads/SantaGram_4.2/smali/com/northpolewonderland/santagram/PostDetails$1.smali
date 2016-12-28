.class Lcom/northpolewonderland/santagram/PostDetails$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/PostDetails;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic b:Lcom/northpolewonderland/santagram/PostDetails;


# direct methods
.method constructor <init>(Lcom/northpolewonderland/santagram/PostDetails;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/PostDetails$1;->b:Lcom/northpolewonderland/santagram/PostDetails;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/PostDetails$1;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$1;->b:Lcom/northpolewonderland/santagram/PostDetails;

    invoke-virtual {v0}, Lcom/northpolewonderland/santagram/PostDetails;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$1;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/northpolewonderland/santagram/PostDetails$1;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
