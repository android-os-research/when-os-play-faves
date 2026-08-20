.class public Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;
.super Ljava/lang/Object;
.source "CoreSettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CoreSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceConfigEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public coreSettingKey:Ljava/lang/String;

.field public defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public flag:Ljava/lang/String;

.field public namespace:Ljava/lang/String;

.field public type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->namespace:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->flag:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->coreSettingKey:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->type:Ljava/lang/Class;

    .line 66
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/am/CoreSettingsObserver$DeviceConfigEntry;->defaultValue:Ljava/lang/Object;

    return-void
.end method
