.class public final synthetic LuTools/uBlocker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LuTools/uBlocker$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 0
    iget-object v0, p0, LuTools/uBlocker$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ImageView;

    invoke-static {v0}, LuTools/uBlocker;->lambda$HideEndSuggestedVideoOverlay$2(Landroid/widget/ImageView;)V

    return-void
.end method
