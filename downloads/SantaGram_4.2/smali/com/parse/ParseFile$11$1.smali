.class Lcom/parse/ParseFile$11$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$11;->then(La/j;)La/j;
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
        "Ljava/io/File;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$11;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$11;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile$11$1;->this$1:Lcom/parse/ParseFile$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$11$1;->then(La/j;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
