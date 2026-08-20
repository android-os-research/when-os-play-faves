.class public final Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;
.super Landroid/view/translation/ITranslationServiceCallback$Stub;
.source "TranslationManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/translation/TranslationManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslationServiceRemoteCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V
    .registers 2

    .line 587
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    invoke-direct {p0}, Landroid/view/translation/ITranslationServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .registers 2

    if-nez p1, :cond_b

    const-string p0, "TranslationManagerServiceImpl"

    const-string/jumbo p1, "received a null TranslationCapability from TranslationService."

    .line 593
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 596
    :cond_b
    iget-object p0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->-$$Nest$mnotifyClientsTranslationCapability(Lcom/android/server/translation/TranslationManagerServiceImpl;Landroid/view/translation/TranslationCapability;)V

    return-void
.end method
