.class Lcom/parse/OfflineQueryLogic$13;
.super Lcom/parse/OfflineQueryLogic$ConstraintMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$queryConstraintValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$13;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$13;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$13;->val$queryConstraintValue:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
    .locals 2
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

    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$13;->val$key:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v0}, Lcom/parse/OfflineQueryLogic;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$13;->val$queryConstraintValue:Ljava/lang/Object;

    # invokes: Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/parse/OfflineQueryLogic;->access$400(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    goto :goto_0
.end method
