.class public final Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;
.super Landroid/os/RemoteCallbackList;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalDeathRecipients"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/android/internal/textservice/ISpellCheckerSessionListener;",
        ">;"
    }
.end annotation


# instance fields
.field public final mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V
    .registers 2

    .line 1004
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1005
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2

    .line 1000
    check-cast p1, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->onCallbackDied(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return-void
.end method

.method public onCallbackDied(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 2

    .line 1010
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;->mGroup:Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    return-void
.end method
