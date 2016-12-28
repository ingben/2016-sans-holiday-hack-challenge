.class Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "<TT;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineQueryLogic$SubQueryMatcher;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic$SubQueryMatcher;Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->this$1:Lcom/parse/OfflineQueryLogic$SubQueryMatcher;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->this$1:Lcom/parse/OfflineQueryLogic$SubQueryMatcher;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v2, v0}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->matches(Lcom/parse/ParseObject;Ljava/util/List;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;->then(La/j;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
