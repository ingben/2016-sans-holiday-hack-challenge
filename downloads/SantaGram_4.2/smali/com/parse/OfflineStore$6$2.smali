.class Lcom/parse/OfflineStore$6$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$6;->then(La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TT;",
        "La/j",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$6;

.field final synthetic val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

.field final synthetic val$object:La/g;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$6;La/g;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$6$2;->this$1:Lcom/parse/OfflineStore$6;

    iput-object p2, p0, Lcom/parse/OfflineStore$6$2;->val$object:La/g;

    iput-object p3, p0, Lcom/parse/OfflineStore$6$2;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<TT;>;)",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineStore$6$2;->val$object:La/g;

    invoke-virtual {v0}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$6$2;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    iget-object v0, p0, Lcom/parse/OfflineStore$6$2;->val$object:La/g;

    invoke-virtual {v0}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$6$2;->this$1:Lcom/parse/OfflineStore$6;

    iget-object v2, v2, Lcom/parse/OfflineStore$6;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$6$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
