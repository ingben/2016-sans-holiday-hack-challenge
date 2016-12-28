.class public final Lcom/parse/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/a/b$a;,
        Lcom/parse/a/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/parse/a/b$b;

.field private final c:Ljava/util/Map;
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

.field private final d:Lcom/parse/a/a;


# direct methods
.method private constructor <init>(Lcom/parse/a/b$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/parse/a/b$a;->a(Lcom/parse/a/b$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/b;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/parse/a/b$a;->b(Lcom/parse/a/b$a;)Lcom/parse/a/b$b;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/b;->b:Lcom/parse/a/b$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/parse/a/b$a;->c(Lcom/parse/a/b$a;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/b;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/parse/a/b$a;->d(Lcom/parse/a/b$a;)Lcom/parse/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/a/b;->d:Lcom/parse/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/a/b$a;Lcom/parse/a/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/a/b;-><init>(Lcom/parse/a/b$a;)V

    return-void
.end method

.method static synthetic a(Lcom/parse/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/parse/a/b;)Lcom/parse/a/b$b;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b;->b:Lcom/parse/a/b$b;

    return-object v0
.end method

.method static synthetic c(Lcom/parse/a/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/parse/a/b;)Lcom/parse/a/a;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b;->d:Lcom/parse/a/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/parse/a/b$b;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b;->b:Lcom/parse/a/b$b;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/a/b;->c:Ljava/util/Map;

    return-object v0
.end method

.method public d()Lcom/parse/a/a;
    .locals 1

    iget-object v0, p0, Lcom/parse/a/b;->d:Lcom/parse/a/a;

    return-object v0
.end method
