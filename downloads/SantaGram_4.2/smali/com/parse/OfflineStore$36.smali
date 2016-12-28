.class Lcom/parse/OfflineStore$36;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->getParsePin(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParsePin;",
        ">;",
        "Lcom/parse/ParsePin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$36;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$36;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParsePin;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParsePin;",
            ">;>;)",
            "Lcom/parse/ParsePin;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    :goto_0
    if-nez v0, :cond_0

    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    iget-object v1, p0, Lcom/parse/OfflineStore$36;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePin;->setName(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$36;->then(La/j;)Lcom/parse/ParsePin;

    move-result-object v0

    return-object v0
.end method
