.class public final Lcom/parse/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/parse/a/b$b;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/parse/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/a/b$a;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/parse/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/parse/a/b;->a(Lcom/parse/a/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/b$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/parse/a/b;->b(Lcom/parse/a/b;)Lcom/parse/a/b$b;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/b$a;->b:Lcom/parse/a/b$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/parse/a/b;->c(Lcom/parse/a/b;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/parse/a/b$a;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/parse/a/b;->d(Lcom/parse/a/b;)Lcom/parse/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/b$a;->d:Lcom/parse/a/a;

    return-void
.end method

.method static synthetic a(Lcom/parse/a/b$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/parse/a/b$a;)Lcom/parse/a/b$b;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b$a;->b:Lcom/parse/a/b$b;

    return-object v0
.end method

.method static synthetic c(Lcom/parse/a/b$a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/parse/a/b$a;)Lcom/parse/a/a;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b$a;->d:Lcom/parse/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/parse/a/a;)Lcom/parse/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/parse/a/b$a;->d:Lcom/parse/a/a;

    return-object p0
.end method

.method public a(Lcom/parse/a/b$b;)Lcom/parse/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/parse/a/b$a;->b:Lcom/parse/a/b$b;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/parse/a/b$a;
    .locals 0

    iput-object p1, p0, Lcom/parse/a/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/parse/a/b;
    .locals 2

    new-instance v0, Lcom/parse/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/a/b;-><init>(Lcom/parse/a/b$a;Lcom/parse/a/b$1;)V

    return-object v0
.end method
