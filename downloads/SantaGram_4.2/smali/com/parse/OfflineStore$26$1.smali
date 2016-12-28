.class Lcom/parse/OfflineStore$26$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$26;->then(La/j;)La/j;
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
        "Lcom/parse/ParseSQLiteDatabase;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$26;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$26;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$26$1;->this$1:Lcom/parse/OfflineStore$26;

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
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->beginTransactionAsync()La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$26$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$26$1$1;-><init>(Lcom/parse/OfflineStore$26$1;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$26$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
