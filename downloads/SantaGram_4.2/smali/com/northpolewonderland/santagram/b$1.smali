.class final Lcom/northpolewonderland/santagram/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/northpolewonderland/santagram/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/northpolewonderland/santagram/b$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/northpolewonderland/santagram/b$1;->a:Landroid/content/Context;

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/northpolewonderland/santagram/b$1;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
