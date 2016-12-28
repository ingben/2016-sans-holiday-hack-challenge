.class final Lcom/parse/OfflineQueryLogic$17;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$17;->val$store:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$17;->val$item:Ljava/lang/Object;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$17;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$17;->val$store:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$17;->val$item:Ljava/lang/Object;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$17;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;
    invoke-static {v0, v1, v2, v3}, Lcom/parse/OfflineQueryLogic;->access$600(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$17;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
