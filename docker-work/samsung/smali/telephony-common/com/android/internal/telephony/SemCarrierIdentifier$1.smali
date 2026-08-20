.class Lcom/android/internal/telephony/SemCarrierIdentifier$1;
.super Landroid/os/Handler;
.source "SemCarrierIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SemCarrierIdentifier;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SemCarrierIdentifier;Landroid/os/Looper;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleMessage] msg.what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "[handleMessage]- ex: "

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    goto :goto_7b

    .line 101
    :cond_22
    :try_start_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ContentValues;

    .line 102
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;->CONTENT_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p0, "[handleMessage] update done"

    .line 108
    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3a} :catch_3b

    goto :goto_7b

    :catch_3b
    move-exception p0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->e(Ljava/lang/String;)V

    goto :goto_7b

    .line 89
    :cond_4f
    :try_start_4f
    iget-object p0, p0, Lcom/android/internal/telephony/SemCarrierIdentifier$1;->this$0:Lcom/android/internal/telephony/SemCarrierIdentifier;

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SemCarrierIdentifier;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/SemCarrierIdentifier$SecCarrier;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "method.init"

    const-string v1, "SemCarrierIdentifier"

    invoke-virtual {p0, p1, v0, v1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p0, "[handleMessage] call done"

    .line 94
    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->i(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_67} :catch_68

    goto :goto_7b

    :catch_68
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemCarrierIdentifier$CarrierLog;->e(Ljava/lang/String;)V

    :goto_7b
    return-void
.end method
