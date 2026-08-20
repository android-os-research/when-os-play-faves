.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/IAssistDataReceiver;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Landroid/app/IAssistDataReceiver;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$0:Landroid/app/IAssistDataReceiver;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda8;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$Wf9BjXqyIfx-WeG3Ds-y96L4QrU(Landroid/app/IAssistDataReceiver;Landroid/graphics/Bitmap;)V

    return-void
.end method
