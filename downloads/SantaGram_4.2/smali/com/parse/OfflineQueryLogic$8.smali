.class Lcom/parse/OfflineQueryLogic$8;
.super Lcom/parse/OfflineQueryLogic$SubQueryMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/OfflineQueryLogic$SubQueryMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$resultKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$8;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$8;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/OfflineQueryLogic$8;->val$resultKey:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$State;)V

    return-void
.end method


# virtual methods
.method protected matches(Lcom/parse/ParseObject;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$8;->val$key:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v0}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$8;->val$resultKey:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/parse/OfflineQueryLogic;->access$400(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
