.class Lcom/parse/ParseConfigController$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfigController$1;->then(La/j;)La/j;
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
        "Lcom/parse/ParseConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseConfigController$1;

.field final synthetic val$config:Lcom/parse/ParseConfig;


# direct methods
.method constructor <init>(Lcom/parse/ParseConfigController$1;Lcom/parse/ParseConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseConfigController$1$1;->this$1:Lcom/parse/ParseConfigController$1;

    iput-object p2, p0, Lcom/parse/ParseConfigController$1$1;->val$config:Lcom/parse/ParseConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParseConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/ParseConfig;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseConfigController$1$1;->val$config:Lcom/parse/ParseConfig;

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfigController$1$1;->then(La/j;)Lcom/parse/ParseConfig;

    move-result-object v0

    return-object v0
.end method
