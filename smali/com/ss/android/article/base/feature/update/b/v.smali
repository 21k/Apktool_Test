.class Lcom/ss/android/article/base/feature/update/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ss/android/article/base/feature/update/b/g;


# direct methods
.method constructor <init>(Lcom/ss/android/article/base/feature/update/b/g;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/ss/android/article/base/feature/update/b/v;->a:Lcom/ss/android/article/base/feature/update/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/ss/android/article/base/feature/update/b/v;->a:Lcom/ss/android/article/base/feature/update/b/g;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/update/b/g;->Z:Lcom/ss/android/article/base/feature/update/b/e$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/article/base/feature/update/b/v;->a:Lcom/ss/android/article/base/feature/update/b/g;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/update/b/g;->W:Lcom/ss/android/article/base/feature/update/a/f;

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/ss/android/article/base/feature/update/b/v;->a:Lcom/ss/android/article/base/feature/update/b/g;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/update/b/g;->W:Lcom/ss/android/article/base/feature/update/a/f;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/update/a/f;->D:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/article/base/feature/update/b/v;->a:Lcom/ss/android/article/base/feature/update/b/g;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/update/b/g;->W:Lcom/ss/android/article/base/feature/update/a/f;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/update/a/f;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    sget v0, Lcom/ss/android/article/news/R$id;->tag_image_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 355
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/ss/android/article/base/feature/update/b/v;->a:Lcom/ss/android/article/base/feature/update/b/g;

    iget-object v1, v1, Lcom/ss/android/article/base/feature/update/b/g;->Z:Lcom/ss/android/article/base/feature/update/b/e$a;

    check-cast p1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ss/android/article/base/feature/update/b/v;->a:Lcom/ss/android/article/base/feature/update/b/g;

    iget-object v2, v2, Lcom/ss/android/article/base/feature/update/b/g;->W:Lcom/ss/android/article/base/feature/update/a/f;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v2, v0}, Lcom/ss/android/article/base/feature/update/b/e$a;->a(Landroid/widget/ImageView;Lcom/ss/android/article/base/feature/update/a/f;I)V

    goto :goto_0

    .line 355
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
