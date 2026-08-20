.class public Lcom/samsung/server/wallpaper/CMFWallpaper$3;
.super Ljava/lang/Thread;
.source "CMFWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColorCodeFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/CMFWallpaper;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "CMFWallpaper"

    const-string v1, "ColorCodePollingThread run()"

    .line 152
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    const-string/jumbo v2, "ril.product_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fputmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)V

    .line 155
    :goto_13
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    :cond_27
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;)I

    move-result v1

    if-lez v1, :cond_69

    .line 157
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorCodePollingThread sleep(1000) count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 158
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 159
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fputmLastColorCodePollingThreadCount(Lcom/samsung/server/wallpaper/CMFWallpaper;I)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_59} :catch_5a

    goto :goto_5f

    :catch_5a
    const-string v1, "InterruptedException occurred"

    .line 161
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_5f
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fputmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/String;)V

    goto :goto_13

    .line 167
    :cond_69
    :try_start_69
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ea

    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ea

    .line 168
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    const/16 v3, 0x8

    if-le v1, v2, :cond_9e

    .line 169
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_ae

    .line 170
    :cond_9e
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmProductCode(Lcom/samsung/server/wallpaper/CMFWallpaper;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 171
    :goto_ae
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") retrieved!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setCMFColorCode(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-virtual {v2, v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setDeviceColor(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$misOperatorWallpaper(Lcom/samsung/server/wallpaper/CMFWallpaper;)Z

    move-result v1

    if-nez v1, :cond_ea

    .line 175
    iget-object v1, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    invoke-static {v1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fgetmService(Lcom/samsung/server/wallpaper/CMFWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->updateDefaultWallpaper()V
    :try_end_e4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_69 .. :try_end_e4} :catch_e5

    goto :goto_ea

    :catch_e5
    const-string v1, "IndexOutOfBoundsException occurred on mColorCodePollingThread"

    .line 179
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_ea
    :goto_ea
    iget-object p0, p0, Lcom/samsung/server/wallpaper/CMFWallpaper$3;->this$0:Lcom/samsung/server/wallpaper/CMFWallpaper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$fputmColorCodePollingThread(Lcom/samsung/server/wallpaper/CMFWallpaper;Ljava/lang/Thread;)V

    return-void
.end method
