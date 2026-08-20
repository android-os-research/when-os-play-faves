.class public Lcom/android/server/pm/OtaDexoptService$1;
.super Lcom/android/server/pm/Installer;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/OtaDexoptService;

.field public final synthetic val$commands:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V
    .registers 5

    .line 284
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService$1;->this$0:Lcom/android/server/pm/OtaDexoptService;

    iput-object p4, p0, Lcom/android/server/pm/OtaDexoptService$1;->val$commands:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    move-object v0, p0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "10 "

    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dexopt"

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    .line 307
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v2, p3

    .line 309
    invoke-virtual {p0, v1, p3}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v2, p4

    .line 310
    invoke-virtual {p0, v1, p4}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 311
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v2, p6

    .line 312
    invoke-virtual {p0, v1, p6}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 313
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v2, p8

    .line 314
    invoke-virtual {p0, v1, p8}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v2, p9

    .line 315
    invoke-virtual {p0, v1, p9}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v2, p10

    .line 316
    invoke-virtual {p0, v1, p10}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v2, p11

    .line 317
    invoke-virtual {p0, v1, p11}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 318
    invoke-static {p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 319
    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v2, p14

    .line 320
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v2, p15

    .line 321
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v2, p16

    .line 322
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 324
    iget-object v0, v0, Lcom/android/server/pm/OtaDexoptService$1;->val$commands:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 6

    const/16 p0, 0x20

    .line 334
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_d

    const/16 p0, 0x21

    .line 337
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 341
    :cond_d
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v2, :cond_2b

    const-string p0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 343
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid argument while executing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
