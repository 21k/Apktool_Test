.class Lcom/ss/android/topic/imagechooser/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;


# direct methods
.method constructor <init>(Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ss/android/topic/imagechooser/e;->a:Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ss/android/topic/imagechooser/e;->a:Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;

    invoke-static {v0}, Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;->a(Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;)Lcom/ss/android/topic/imagechooser/ImageChooserActionBar$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ss/android/topic/imagechooser/e;->a:Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;

    invoke-static {v0}, Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;->a(Lcom/ss/android/topic/imagechooser/ImageChooserActionBar;)Lcom/ss/android/topic/imagechooser/ImageChooserActionBar$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/topic/imagechooser/ImageChooserActionBar$a;->b()V

    .line 60
    :cond_0
    return-void
.end method
