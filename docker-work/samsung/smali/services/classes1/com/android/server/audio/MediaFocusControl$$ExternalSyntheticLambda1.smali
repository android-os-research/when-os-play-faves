.class public final synthetic Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/MediaFocusControl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/MediaFocusControl;IZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/MediaFocusControl;

    iput p2, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/MediaFocusControl;

    iget v1, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$2:Z

    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$3:Z

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/audio/MediaFocusControl;->$r8$lambda$ulRZNi6eOYux3Tlpe8I4PQ0OOsE(Lcom/android/server/audio/MediaFocusControl;IZZLcom/android/server/audio/FocusRequester;)V

    return-void
.end method
