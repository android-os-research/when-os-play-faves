.class public interface abstract Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;
.super Ljava/lang/Object;
.source "WifiDriverNativeCommand.java"


# virtual methods
.method public abstract getChipsetVendorName()Ljava/lang/String;
.end method

.method public abstract getVendorConnFileInfo(I)Ljava/lang/String;
.end method

.method public abstract getVendorProperty(I)Ljava/lang/String;
.end method

.method public abstract removeVendorConnFile(I)Z
.end method

.method public abstract removeVendorLogFiles()Z
.end method

.method public abstract setVendorProperty(ILjava/lang/String;)Z
.end method

.method public abstract updateVendorConnFile(I)Z
.end method

.method public abstract writeVendorConnFile(ILjava/lang/String;)Z
.end method
