.class Lcom/android/internal/telephony/Am$2;
.super Ljava/lang/Object;
.source "Am.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/Am;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/Am;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .registers 5

    const-string p2, "-D"

    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_16

    .line 237
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0}, Lcom/android/internal/telephony/Am;->-$$Nest$fgetmStartFlags(Lcom/android/internal/telephony/Am;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmStartFlags(Lcom/android/internal/telephony/Am;I)V

    goto/16 :goto_e0

    :cond_16
    const-string p2, "-N"

    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 239
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0}, Lcom/android/internal/telephony/Am;->-$$Nest$fgetmStartFlags(Lcom/android/internal/telephony/Am;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmStartFlags(Lcom/android/internal/telephony/Am;I)V

    goto/16 :goto_e0

    :cond_2b
    const-string p2, "-W"

    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 241
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmWaitOption(Lcom/android/internal/telephony/Am;Z)V

    goto/16 :goto_e0

    :cond_3a
    const-string p2, "-P"

    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_52

    .line 243
    iget-object p1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmProfileFile(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmAutoStop(Lcom/android/internal/telephony/Am;Z)V

    goto/16 :goto_e0

    :cond_52
    const-string p2, "--start-profiler"

    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6b

    .line 246
    iget-object p1, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmProfileFile(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmAutoStop(Lcom/android/internal/telephony/Am;Z)V

    goto/16 :goto_e0

    :cond_6b
    const-string p2, "--sampling"

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_81

    .line 249
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmSamplingInterval(Lcom/android/internal/telephony/Am;I)V

    goto :goto_e0

    :cond_81
    const-string p2, "-R"

    .line 250
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmRepeat(Lcom/android/internal/telephony/Am;I)V

    goto :goto_e0

    :cond_97
    const-string p2, "-S"

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmStopOption(Lcom/android/internal/telephony/Am;Z)V

    goto :goto_e0

    :cond_a5
    const-string p2, "--track-allocation"

    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 255
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-static {p0}, Lcom/android/internal/telephony/Am;->-$$Nest$fgetmStartFlags(Lcom/android/internal/telephony/Am;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmStartFlags(Lcom/android/internal/telephony/Am;I)V

    goto :goto_e0

    :cond_b9
    const-string p2, "--user"

    .line 256
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cf

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Am;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmUserId(Lcom/android/internal/telephony/Am;I)V

    goto :goto_e0

    :cond_cf
    const-string p2, "--receiver-permission"

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e1

    .line 259
    iget-object p0, p0, Lcom/android/internal/telephony/Am$2;->this$0:Lcom/android/internal/telephony/Am;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/Am;->-$$Nest$fputmReceiverPermission(Lcom/android/internal/telephony/Am;Ljava/lang/String;)V

    :goto_e0
    return v0

    :cond_e1
    return v1
.end method
