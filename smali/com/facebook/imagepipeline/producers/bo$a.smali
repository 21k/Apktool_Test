.class Lcom/facebook/imagepipeline/producers/bo$a;
.super Lcom/facebook/imagepipeline/producers/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/p",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/bo;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/bo;Lcom/facebook/imagepipeline/producers/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/k",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/bo$a;->a:Lcom/facebook/imagepipeline/producers/bo;

    .line 80
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/producers/k;)V

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/bo;Lcom/facebook/imagepipeline/producers/k;Lcom/facebook/imagepipeline/producers/bo$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/bo$a;-><init>(Lcom/facebook/imagepipeline/producers/bo;Lcom/facebook/imagepipeline/producers/k;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/bo$a;->a:Lcom/facebook/imagepipeline/producers/bo;

    monitor-enter v1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bo$a;->a:Lcom/facebook/imagepipeline/producers/bo;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/bo;->a(Lcom/facebook/imagepipeline/producers/bo;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 107
    if-nez v0, :cond_0

    .line 108
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/bo$a;->a:Lcom/facebook/imagepipeline/producers/bo;

    invoke-static {v2}, Lcom/facebook/imagepipeline/producers/bo;->b(Lcom/facebook/imagepipeline/producers/bo;)I

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/bo$a;->a:Lcom/facebook/imagepipeline/producers/bo;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/bo;->c(Lcom/facebook/imagepipeline/producers/bo;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/imagepipeline/producers/bp;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/producers/bp;-><init>(Lcom/facebook/imagepipeline/producers/bo$a;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    :cond_1
    return-void

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/bo$a;->d()Lcom/facebook/imagepipeline/producers/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/k;->b()V

    .line 100
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bo$a;->c()V

    .line 101
    return-void
.end method

.method protected a(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/bo$a;->d()Lcom/facebook/imagepipeline/producers/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/k;->b(Ljava/lang/Object;Z)V

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bo$a;->c()V

    .line 89
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/bo$a;->d()Lcom/facebook/imagepipeline/producers/k;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/k;->b(Ljava/lang/Throwable;)V

    .line 94
    invoke-direct {p0}, Lcom/facebook/imagepipeline/producers/bo$a;->c()V

    .line 95
    return-void
.end method
