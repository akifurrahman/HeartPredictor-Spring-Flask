package com.dm04.dm04.model;

import java.util.List;

public class SentiModel {


List<Double> compound;
List<Double> neg;
List<Double> pos;
Double neutral;
String text;
public List<Double> getCompound() {
    return compound;
}
public void setCompound(List<Double> compound) {
    this.compound = compound;
}
public List<Double> getNeg() {
    return neg;
}
public void setNeg(List<Double> neg) {
    this.neg = neg;
}
public List<Double> getPos() {
    return pos;
}
public void setPos(List<Double> pos) {
    this.pos = pos;
}
public Double getNeutral() {
    return neutral;
}
public void setNeutral(Double neutral) {
    this.neutral = neutral;
}
public String getText() {
    return text;
}
public void setText(String text) {
    this.text = text;
}




    
}
