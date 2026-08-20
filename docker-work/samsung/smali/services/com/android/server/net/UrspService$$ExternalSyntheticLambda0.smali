.class public final synthetic Lcom/android/server/net/UrspService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/UrspService$$ExternalSyntheticLambda0;->f$0:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/net/UrspService$$ExternalSyntheticLambda0;->f$0:Landroid/os/UserHandle;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/server/net/UrspService;->$r8$lambda$5IAuywlIQAlzc2AMehSnceXrkUw(Landroid/os/UserHandle;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
