.class Lcom/parse/ParsePinningEventuallyQueue$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ConnectivityNotifier$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePinningEventuallyQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkConnectivityStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    goto :goto_0
.end method
