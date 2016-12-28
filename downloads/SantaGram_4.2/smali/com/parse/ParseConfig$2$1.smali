.class Lcom/parse/ParseConfig$2$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfig$2;->then(La/j;)La/j;
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
        "<",
        "Lcom/parse/ParseConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseConfig$2;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseConfig$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseConfig$2$1;->this$0:Lcom/parse/ParseConfig$2;

    iput-object p2, p0, Lcom/parse/ParseConfig$2$1;->val$sessionToken:Ljava/lang/String;

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
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ParseConfig;->getConfigController()Lcom/parse/ParseConfigController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseConfig$2$1;->val$sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseConfigController;->getAsync(Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig$2$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
