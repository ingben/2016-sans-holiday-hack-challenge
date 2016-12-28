.class Lcom/parse/OfflineQueryLogic$15;
.super Lcom/parse/OfflineQueryLogic$ConstraintMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$constraintMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

.field final synthetic val$ignoreACLs:Z


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;ZLcom/parse/OfflineQueryLogic$ConstraintMatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$15;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-boolean p3, p0, Lcom/parse/OfflineQueryLogic$15;->val$ignoreACLs:Z

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$15;->val$constraintMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/parse/OfflineQueryLogic$15;->val$ignoreACLs:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$15;->user:Lcom/parse/ParseUser;

    invoke-static {v0, p1}, Lcom/parse/OfflineQueryLogic;->hasReadAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z

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
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$15;->val$constraintMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    goto :goto_0
.end method
