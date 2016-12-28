.class Lcom/parse/ParseObject$28$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$28;->then(La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/Void;",
        "La/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseObject$28;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$28;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$28$1;->this$1:Lcom/parse/ParseObject$28;

    iput-object p2, p0, Lcom/parse/ParseObject$28$1;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseObject$28$1;->this$1:Lcom/parse/ParseObject$28;

    iget-object v0, v0, Lcom/parse/ParseObject$28;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$28$1;->this$1:Lcom/parse/ParseObject$28;

    iget-object v0, v0, Lcom/parse/ParseObject$28;->this$0:Lcom/parse/ParseObject;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$28$1;->this$1:Lcom/parse/ParseObject$28;

    iget-object v0, v0, Lcom/parse/ParseObject$28;->this$0:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$28$1;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;La/j;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$28$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
