.class Lcom/parse/OfflineStore$6;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)La/j;
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
        "Landroid/database/Cursor;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$query:Lcom/parse/ParseQuery$State;

.field final synthetic val$queryLogic:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$6;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$6;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineStore$6;->val$query:Lcom/parse/ParseQuery$State;

    iput-object p4, p0, Lcom/parse/OfflineStore$6;->val$user:Lcom/parse/ParseUser;

    iput-object p5, p0, Lcom/parse/OfflineStore$6;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p6, p0, Lcom/parse/OfflineStore$6;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/parse/OfflineStore$6;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iget-object v2, p0, Lcom/parse/OfflineStore$6;->val$query:Lcom/parse/ParseQuery$State;

    iget-object v3, p0, Lcom/parse/OfflineStore$6;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v0, v2, v3}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, La/g;

    invoke-direct {v4}, La/g;-><init>()V

    new-instance v5, Lcom/parse/OfflineStore$6$4;

    invoke-direct {v5, p0, v0}, Lcom/parse/OfflineStore$6$4;-><init>(Lcom/parse/OfflineStore$6;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, La/j;->d(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$6$3;

    invoke-direct {v1, p0, v4}, Lcom/parse/OfflineStore$6$3;-><init>(Lcom/parse/OfflineStore$6;La/g;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$6$2;

    invoke-direct {v1, p0, v4, v2}, Lcom/parse/OfflineStore$6$2;-><init>(Lcom/parse/OfflineStore$6;La/g;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$6$1;

    invoke-direct {v1, p0, v4}, Lcom/parse/OfflineStore$6$1;-><init>(Lcom/parse/OfflineStore$6;La/g;)V

    invoke-virtual {v0, v1}, La/j;->c(La/h;)La/j;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$6;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
