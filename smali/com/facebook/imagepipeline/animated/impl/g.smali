.class Lcom/facebook/imagepipeline/animated/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbolts/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/c",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/d;

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/imagepipeline/animated/impl/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/impl/c;Lbolts/d;I)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/g;->c:Lcom/facebook/imagepipeline/animated/impl/c;

    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/g;->a:Lbolts/d;

    iput p3, p0, Lcom/facebook/imagepipeline/animated/impl/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/d",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/g;->c:Lcom/facebook/imagepipeline/animated/impl/c;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/g;->a:Lbolts/d;

    iget v2, p0, Lcom/facebook/imagepipeline/animated/impl/g;->b:I

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/animated/impl/c;->a(Lcom/facebook/imagepipeline/animated/impl/c;Lbolts/d;I)V

    .line 422
    const/4 v0, 0x0

    return-object v0
.end method
