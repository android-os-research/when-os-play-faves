.class public final synthetic Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

.field public final synthetic blacklist f$1:Landroid/telephony/SmsMessage;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/ImsSmsDispatcher;Landroid/telephony/SmsMessage;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/SmsMessage;

    iput p3, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final blacklist onSmsInjectedResult(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/ImsSmsDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/SmsMessage;

    iget p0, p0, Lcom/android/internal/telephony/ImsSmsDispatcher$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->$r8$lambda$nLYM6J-F2AbnM43SMBttniZNU2g(Lcom/android/internal/telephony/ImsSmsDispatcher;Landroid/telephony/SmsMessage;II)V

    return-void
.end method
